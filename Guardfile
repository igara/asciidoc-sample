p "ビルド開始します"

Dir.glob("docks/**/*.adoc").each do |adocfile|
	p adocfile
	dir = adocfile.gsub(/\w*.adoc/, "")
	rm = "rm -rf #{dir}/.asciidoctor #{dir}/*.png #{dir}/*.html"
	system(rm)
	create = "asciidoctor -r asciidoctor-diagram #{adocfile}"
	system(create)
end

guard 'shell' do
	watch(/.adoc|.pu/) {|m|
		Dir.glob("docks/**/*.adoc").each do |adocfile|
			p adocfile
			dir = adocfile.gsub(/\w*.adoc/, "")
			rm = "rm -rf #{dir}/.asciidoctor #{dir}/*.png #{dir}/*.html"
			system(rm)
			create = "asciidoctor -r asciidoctor-diagram #{adocfile}"
			system(create)
		end
	}
end
