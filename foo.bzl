def _foo_binary_impl(ctx):
    print("analyzing", ctx.label)
    out = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.write(
        output = out,
        content = "Hello {}!\n".format(ctx.attr.username),
    )
    return [DefaultInfo(files = depset([out]))]

foo_binary = rule(
    implementation = _foo_binary_impl,
    attrs = {
        "srcs": attr.label_list(allow_files = [".example"]),
        "username": attr.string(),
        # "hdrs": attr.label_list(allow_files = [".header"]),
        # "deps": attr.label_list(providers = [ExampleInfo]),
        # "data": attr.label_list(allow_files = True),
    },

)

print("bzl file evaluation")