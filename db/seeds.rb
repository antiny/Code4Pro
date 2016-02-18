# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# require File.expand_path('../seeds_project', __FILE__)

@project1 = Project.create!({
	name: 'Kỹ năng thuyết trình và nói trước công chúng',
	content: %q(Ngày nay, cùng với nhu cầu phát triển của xã hội, mỗi người trong chúng ta sẽ ít nhất phải đứng trước công chúng vài ba lần trong đời. Bạn phải thay mặt nhóm học ở lớp thuyết trình cho bài tập được giao trước lớp, bạn phải bảo vệ luận văn tốt nghiệp trước Hội đồng các thầy cô, và sau này, bạn còn thuyết phục khách hàng về tính khả thi của dự án mà bạn đang đảm nhận…

Và, sẽ có lúc bạn tự hỏi: tại sao có người nói chuyện trước đám đông lại tự tin và cuốn hút đến vậy, trong khi bạn hay những người khác lại không thể nào hoàn thành bài thuyết trình một cách xuất sắc, dù bạn đã chuẩn bị rất kỹ?

Kỹ năng thuyết trình yếu kém sẽ khiến bạn mất đi nhiều cơ hội nghề nghiệp, thăng tiến và chứng tỏ năng lực của mình với người khác. Và đây là kỹ năng bạn hoàn toàn có thể rèn luyện được.

Khóa học Kỹ năng thuyết trình của Ths. Nguyễn Hoàng Khắc Hiếu – với nhiều năm kinh nghiệm làm diễn giả, sẽ cung cấp cho bạn các kỹ năng cần thiết để thuyết trình một cách ấn tượng, lôi cuốn:

Khóa học Kỹ năng thuyết trình và nói trước công chúng giúp bạn:

- Biết cách chuẩn bị nội dung chất lượng, cách trình bày sáng tạo
- Tận dụng tối đa hiệu quả của cách trình bày PowerPoint
- Các bí quyết thu hút khán giả trong khi thuyết trình như một diễn giả
- Tạo dựng phong cách thuyết trình lôi cuốn của chính bạn
  ),
	price: '200000',
	image: File.new("#{Rails.root}/app/assets/images/cover-khoathuyettrinh2.jpg")
})

@project1.tasks.create!({
	title: 'CHƯƠNG 1: XÂY DỰNG BẢN THÂN BÀI THUYẾT TRÌNH',
	note: '',
	video: 'snkfv9k6rp',
	header: true,
	tag: 0
})

@project1.tasks.create!({
	title: 'Bài 1 : Cách mở đầu lập tức gây sự chú ý',
	note: '',
	video: 'snkfv9k6rp',
	header: false,
	tag: 1
})

@project1.tasks.create!({
	title: 'Bài 2 : Các sai lầm chết người khi mở đầu',
	note: '',
	video: 'snkfv9k6rp',
	header: false,
	tag: 2
})

@project1.tasks.create!({
	title: 'Bài 3 : Kết thúc ấn tượng để lại dư âm trong lòng khán giả',
	note: '',
	video: 'snkfv9k6rp',
	header: false,
	tag: 3
})

@project1.tasks.create!({
	title: 'CHƯƠNG 2: HOÀN THIỆN PHONG CÁCH CỦA BẠN',
	note: '',
	video: 'snkfv9k6rp',
	header: true,
	tag: 4
})

@project1.tasks.create!({
	title: 'Bài 6 : Vượt qua sự hồi hộp khi đứng trước đám đông',
	note: '',
	video: 'snkfv9k6rp',
	header: false,
	tag: 5
})

@project1.tasks.create!({
	title: 'Bài 7 : Sử dụng ngôn ngữ cơ thể tạo ấn tượng cho buổi thuyết trình',
	note: '',
	video: 'snkfv9k6rp',
	header: false,
	tag: 6
})

@project1.tasks.create!({
	title: 'Bài 8 : Phương pháp luyện phát âm và giọng nói chuẩn, rõ ràng',
	note: '',
	video: 'snkfv9k6rp',
	header: false,
	tag: 7
})