#!/usr/bin/env bash

# Adapted from: git@github.com:dracula/tmux.git
# Put this in ~/.tmux
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

fahrenheit=$1
location=$2
fixedlocation=$3

display_location()
{
  if $location && [[ ! -z "$fixedlocation" ]]; then
    echo " $fixedlocation"
  elif $location; then
    city=$(curl -s https://ipinfo.io/city 2> /dev/null)
    region=$(curl -s https://ipinfo.io/region 2> /dev/null)
    echo "  $city, $region"
  else
    echo ''
  fi
}

fetch_weather_information()
{
  display_weather=$1
  # it gets the weather condition textual name (%C), and the temperature (%t)
  curl -sL wttr.in/$fixedlocation\?format="%C+%t$display_weather"
}

#get weather display
display_weather()
{
  display_weather='&u' # for USA system
  weather_information=$(fetch_weather_information $display_weather)

  weather_condition=$(echo $weather_information | rev | cut -d ' ' -f2- | rev) # Sunny, Snow, etc
  temperature=$(echo $weather_information | rev | cut -d ' ' -f 1 | rev) # +31°C, -3°F, etc
  unicode=$(forecast_unicode $weather_condition)

  echo "$unicode${temperature/+/}" # remove the plus sign to the temperature
}

forecast_unicode()
{
  weather_condition=$(echo $weather_condition | awk '{print tolower($0)}')

  if [[ $weather_condition =~ 'snow' ]]; then
    echo '❄️  '
  elif [[ (($weather_condition =~ 'rain') || ($weather_condition =~ 'shower')) ]]; then
    echo '☔️  '
  elif [[ (($weather_condition =~ 'overcast') || ($weather_condition =~ 'cloud')) ]]; then
    echo '☁️  '
  elif [[ $weather_condition = 'NA' ]]; then
    echo '🌡️ '
  else
    echo '☀️  '
  fi
}

w_main()
{
  # process should be cancelled when session is killed
  if ping -q -c 1 -W 1 ipinfo.io &>/dev/null; then
    echo "$(display_weather)$(display_location)"
  else
    echo "Location Unavailable"
  fi
}

fahrenheit=true
location=$2
fixedlocation=$3

DATAFILE=/tmp/.dracula-tmux-data
LAST_EXEC_FILE="/tmp/.dracula-tmux-weather-last-exec"
RUN_EACH=1200
TIME_NOW=$(date +%s)
TIME_LAST=$(cat "${LAST_EXEC_FILE}" 2>/dev/null || echo "0")

main()
{
  current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  # Run weather script here
  w_main $fahrenheit $location $fixedlocation > "${DATAFILE}"
  echo "${TIME_NOW}" > "${LAST_EXEC_FILE}"

  cat "${DATAFILE}"
}

#run main driver program
while true
do
    main
    sleep 60
done
#
