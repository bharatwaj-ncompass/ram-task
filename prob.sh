#! /bin/bash

prime () {
	for (( i=2; i<$1; i++ ))
	do
		let "t=$1 % $i"
		if [ $t -eq 0 ]
		then 
			return 0
		fi
	done
	return 1

}

generaterandom () {
	let "cinp=$[ $RANDOM % 50 + 0  ]"
	prime $cinp
	ret=$?
	while true;
	do
		if [ $ret -eq 1 ]
		then 
			return $cinp
		else
			generaterandom
		fi
	done
}
generaterandom
ret=$?
echo $ret

echo

#num=$(($ret))

factorial () {
        n=$(($1))
        echo $n
        f=1
        i=1
        while [ $i -le $n ];
        do
                f=`expr $f \* $i`
        #       echo $f
                i=`expr $i + 1`
        done
        #return $f
        echo "Factorial of $n = $f"
}

factorial ret
