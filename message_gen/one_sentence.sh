py=python3
if which pypy3 > /dev/null 2>&1
then
	py=pypy3
fi

$py message_gen/speak.py | sed 's/^> //g' | sed '/^$/d'
