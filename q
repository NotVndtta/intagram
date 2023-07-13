
[1mFrom:[0m C:/Alexey/plerapp/app/controllers/posts_controller.rb:25 PostsController#create:

    [1;34m24[0m: [32mdef[0m [1;34mcreate[0m
 => [1;34m25[0m:   binding.pry
    [1;34m26[0m:   @post = [1;34;4mPost[0m.new(post_params)
    [1;34m27[0m: 
    [1;34m28[0m:   respond_to [32mdo[0m |format|
    [1;34m29[0m:     [32mif[0m @post.save
    [1;34m30[0m:       format.html { redirect_to post_url(@post), [35mnotice[0m: [31m[1;31m"[0m[31mPost was successfully created.[1;31m"[0m[31m[0m }
    [1;34m31[0m:       format.json { render [33m:show[0m, [35mstatus[0m: [33m:created[0m, [35mlocation[0m: @post }
    [1;34m32[0m:     [32melse[0m
    [1;34m33[0m:       format.html { render [33m:new[0m, [35mstatus[0m: [33m:unprocessable_entity[0m }
    [1;34m34[0m:       format.json { render [35mjson[0m: @post.errors, [35mstatus[0m: [33m:unprocessable_entity[0m }
    [1;34m35[0m:     [32mend[0m
    [1;34m36[0m:   [32mend[0m
    [1;34m37[0m: [32mend[0m

