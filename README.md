# Niceties

Niceties is a curated collection of small, thoughtful additions to Rails.
Nothing fancy, nothing heavy — just expressive, elegant helpers that make
everyday code smoother and more joyful.

It’s the kind of thing you might monkey-patch in your own app and forget about. Niceties gives those private little helpers a permanent, public home.

---

## ✨ Philosophy

Niceties is built on a few quiet principles:

- **Ergonomics matter.** Tiny syntax improvements compound across projects and years.
- **Less is more.** This isn’t a kitchen sink. Every addition is judged by feel.
- **No surprises.** If you have to explain what it’s doing, it probably doesn’t belong here.
- **Ruby’s voice, not ours.** Every method should *read* like Ruby. Nothing flashy, nothing clever for its own sake.

You should be able to drop Niceties into your app and feel like it’s always been there.

---

## What's on the Menu

Niceties provides the following methods so far:

### Object

```rb
# Object.try_each
@user.try_each(:full_name, :nickname, :username) # instead of @user&.full_name || @user&.nickname || @user&.username

# Object.coalesce
@user.coalesce(:full_name, :nickname, "Valued Customer") # instead of @user&.full_name || @user&.nickname || "Valued Customer"

# Object.not_a?
@user.not_a? Widget # instead of !@user.is_a? Widget
```

### Array

```rb
# Array.tidy
["", nil, 4].tidy => [4] # instead of ["", nil, 4].select { it.present? } 
```

### Numerics (Integer and Float)

```rb
# Integer.percent_of
25.percent_of(200) => 50 # instead of (200 / 100.0) * 25

# Float.percent_of
16.6.percent_of(1000) => 166 # instead of (1000 / 100.0) * 16.6
```

More methods will be coming soon and contributions are very much welcomed!

---

## 🫂 Contributing

Niceties is open to anyone with an idea that makes Ruby or Rails feel better to use.

If you’ve ever written a helper method and thought:

> _"This is too small for a gem, but I wish it lived somewhere..."_

That’s exactly what Niceties is for.

**Guiding questions for contributors:**

- Does this make everyday code more readable or expressive?
- Does it align with Ruby’s style and philosophy?
- Would I be delighted if this existed in the language?

If yes — open a PR or start a discussion.
