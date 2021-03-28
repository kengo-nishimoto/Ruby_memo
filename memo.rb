require "csv"

def memo
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"

 memo_type = gets.to_i

 if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    memo_file = gets.chomp.to_s
    
    puts "”メモしたい内容を記入してください”"
    puts "”完了したらCtrl + Dをおします”"
    memo_contents = readlines
    CSV.open(memo_file + ".csv", "w") do |csv|
    csv << [memo_contents]
    return true
 end

 elsif
   memo_type == 2
    puts "編集内容を入力してください"
    memo_contents = readlines
    CSV.open("test.csv", "a") do |csv|
    csv << [memo_contents]
    return true
 end
 else
    puts "1か2を入力してください"
 end
end

again = true
while again
  again = memo
end