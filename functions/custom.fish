function mytest
  if not test $(which java)
    echo 'fish'
  end
  if [ -d !/.config/f ]
    echo 'no exits'
  end
end
