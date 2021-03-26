require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    memo_file = gets.chomp.to_s
         
    puts "”メモしたい内容を記入してください”"
    puts "”完了したらCtrl + Dをおします”"
    memo_contents = gets.chomp.to_s
    CSV.open(memo_file + ".csv", "w") do |csv|
    memo_contents = readlines
    csv << memo_contents
    
end

elsif memo_type == 2
    puts "編集内容を入力してください"
    memo_contents = gets.chomp.to_s
    CSV.open(memo_file + ".csv", "a")
    memo_contents = readlines
    csv << memo_contents
else
    puts "1か2を入力してください"
end