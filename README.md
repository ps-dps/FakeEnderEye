# **FakeEnderEye**
**Mimic the vanilla ender eye behavior, allowing for click detection in survival**

## **Overview**
The worldgen structure tag `eye_of_ender_located` **is removed**, allowing for **20hz right click detection** with all ender eyes

Any ender eye that **doesn't have nbt** can be thrown like a vanilla ender eye

To locate the stronghold, the pack uses **triangulation**, making it efficient

## **How do I use it in MY Pack**
Download the [latest release](https://github.com/ps-dps/FakeEnderEye/releases/latest) from the releases tab

Copy the `fee` namespace into your data pack and make sure that the function `fee:load` runs on reload.

You also need to copy the `filter` part of the `pack.mcmeta` into your own `pack.mcmeta`<br>**or** replace the worldgen structure tag `eye_of_ender_located` with an empty one (making sure to include `"replace": true`)

The data pack can also be used standalone or as an **external dependency**, but I **recommend packaging** it in your own data pack as described above

## **Known Issues**
When **renaming** a vanilla ender eye, it becomes unusable since it now has nbt tags

## **Credit**
Credit to Dominexis (Dominexis#3010), they shared the [basis of the `fee:locate` function](https://discord.com/channels/154777837382008833/157097006500806656/846088771493036072) in the [MCC Discord](https://discord.gg/QAFXFtZ)

---
Check me out on other platforms:

<a href="https://github.com/PuckiSilver" target="_blank">
  <img src="https://github.githubassets.com/favicons/favicon-dark.svg" height="40" width="40"/>
</a>
<a href="https://modrinth.com/user/PuckiSilver" target="_blank">
  <img src="https://docs.modrinth.com/img/logo.svg" height="40" width="40"/>
</a>
<a href="https://www.planetminecraft.com/member/puckisilver" target="_blank">
  <img src="https://www.planetminecraft.com/images/layout/favicon-64.png" height="40" width="40"/>
</a>
