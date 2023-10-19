def simple_number?(n)
  if n % 1 != 0
    return false
  end

  if n <= 1
    return false
  end

  flag = 0
  (2..n-1).each { |m| flag += 1 if n % m == 0 }
  if flag == 0
    return true
  else
    return false
  end
end


while true
  puts "Введіть число n, щоб визначити чи є воно простим"
  puts "Напишіть \"exit\", якщо хочете вийти із програми"
  n = gets.chomp
  n = n.delete(" ")

  if n == "exit"
    puts "Програму завершено"
    break
  end

  begin #Перевірка чи є введені дані є числом
    integer_number = Integer(n)
    n = n.to_i
  rescue ArgumentError
    begin
      float_number = Float(n)
      n = n.to_f
    rescue ArgumentError
      puts "Невірні дані."
    end
  end

  if simple_number?(n)
    puts "Число - просте"
  else
    puts "Число - не просте"
  end
end