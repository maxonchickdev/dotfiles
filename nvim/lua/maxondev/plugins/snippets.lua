return {
  "L3MON4D3/LuaSnip",
  event = { "BufNewFile" },
  config = function()
    local luasnip = require("luasnip")
    local s = luasnip.snippet
    local t = luasnip.text_node
    local i = luasnip.insert_node

    luasnip.add_snippets("javascriptreact", {
      s("uss", {
        t("const [stringState, setStringState = useState<string>('')"),
      }),
      s("usb", {
        t("const [booleanState, setBooleanState] = useState<boolean>(false)"),
      }),
      s("usn", {
        t("const [numberState, setNumberState] = useState<number>(0)"),
      }),

      s("ue", {
        t("useEffect(() => {"),
        t({ "", "\t" }),
        i(1, "// effect logic"),
        t({ "", "" }),
        t("}, ["),
        i(2, "dependencies"),
        t("]);"),
      }),

      s("ni", {
        t("<Image"),
        t({ "", "\t" }),
        t('src="'),
        i(1, "/path/to/image"),
        t('"'),
        t({ "", "\t" }),
        t('alt="'),
        i(2, "Description"),
        t('"'),
        t({ "", "\t" }),
        t("width={"),
        i(3, "500"),
        t("}"),
        t({ "", "\t" }),
        t("height={"),
        i(4, "300"),
        t("}"),
        t({ "", "" }),
        t("/>"),
      }),

      s("nr", {
        t("const router = useRouter()"),
      }),

      s("ini", {
        t("import Image from 'next/image'"),
      }),
      s("inr", {
        t("import useRouter from 'next/navigation"),
      }),
      s("iue", {
        t("import { useEffect } from 'react'"),
      }),
      s("ius", {
        t("import { useState } from 'react'"),
      }),
      s("ifc", {
        t("import { FC } from 'react'"),
      }),
    })

    luasnip.add_snippets("typescriptreact", luasnip.get_snippets("javascriptreact"))
  end,
}
