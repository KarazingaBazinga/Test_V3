while true
  puts "Введіть число n, факторіал n! якого ви хочете визначити"
  puts "n - ціле позитивне число, >= 0"
  puts "Напишіть \"exit\", якщо хочете вийти із програми"
  n = gets.chomp
  n = n.delete(" ")
  if n == "exit"
    puts "Програму завершено"
    break
  end
  if /\A\d+\z/.match?(n) == false
    puts "Невірні дані."
    next
  end
  n = n.to_i
  k = 1
  while n >= 0
    if n == 0
      k *= 1
      break
    end
    k *= n
    n -= 1
  end
  puts k
end