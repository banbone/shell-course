#! /bin/bash
# shellcheck disable=
assess_fail() {
  code="${1}" ;
  success_msg="${2}" ;
  fail_msg="${3}" ;
  if [ "$code" == '1' ] ; then
    echo "❌ ${fail_msg}!";
  else
    echo "✅ ${success_msg}!";
  fi
}
# questions 1-3
for i in 1 2 3 ; do
  printf "Q%s:  " "$i"
  if [ "$(find . -name "answer$i.txt" | wc -l | tr -d ' ')" == '1' ] ; then
    echo "✅ file answer$i.txt exists!";
  else
    echo "❌ cannot find file answer$i.txt!";
  fi
done

printf "Q4:  "
fail='0'
for i in 1 2 3 ; do
  if [ "$(find . -type d -name '1' | wc -l | tr -d ' ')" -ne '1' ] ; then
    fail='1' ;
  fi ;
done
assess_fail $fail 'the target directories exist' 'cannot find the target directories'

printf "Q5:  "
fail='0'
for i in 1 2 3 ; do
  if find . -name "answer$i.txt" | grep -q "/$i/answer$i.txt" ; then
    fail='0' ;
  else
    fail='1' ;
  fi ;
done
assess_fail $fail 'the files are in the correct dir' 'the files are not in the correct dir'

printf "Q6:  "
if [ ! -d ./4 ] ; then
  echo "✅ directory 4 deleted!";
else
  echo "❌ directory 4 is still there!";
fi

printf "Q7:  "
if [ ! -f ./extra-dir/.hidden-file.txt ] ; then
  echo "✅ hidden file deleted!";
else
  echo "❌ hidden file is still there!";
fi

printf 'Q8:  '
if [ ! -d ./extra-dir2 ] ; then
  echo "✅ extra-dir2 deleted!";
else
  echo "❌ extra-dir2 is still there!";
fi

printf 'Q9:  '
fail='0'
for i in 1 2 3 ; do
  if [ ! -f "./answers/$i/answer$i.txt" ] ; then
    fail='1' ;
  fi ;
done
assess_fail $fail 'the directory structure is correct' 'the directory structure is not right'

printf 'Q10: '
if [ "$(ls extra-dir 2> /dev/null)" == "$(ls extra-dir3 2> /dev/null)" ] ; then
  echo "✅ extra-dir copied!";
else
  echo "❌ extra-dir not properly copied!";
fi