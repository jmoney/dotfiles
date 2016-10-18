# -*- shell-script -*-

function es_recovery()
{
    if [ -z $1 ]; then
	echo "WAT"
    else
	curl -X GET "http://$1:9200/_cat/recovery"
    fi
}

function es_health()
{
    if [ -z $1 ]; then
	echo "WAT"
    else
	curl -X GET "http://$1:9200/_cluster/health?pretty=true"
    fi
}
