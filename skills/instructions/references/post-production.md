# Post-production guide (CapCut) - Step 8

Use this guide when the user has assembled the Veo clips in an editor (usually CapCut desktop), shares a screenshot of the edit, or asks about color, effects, titles, fonts, lyrics, Scripture overlays, audio, export or the thumbnail. Everything here is derived from the film's own production file: its COLOR AND LIGHT SCRIPT, timeline, motif, climax and edit notes. Talk to the user in Vietnamese; keep overlay text, verse text and font names in English.

The goal is restraint: the film should look like one graded movie, not like a stack of AI clips with effects on top.

---

## 1. Review the user's edit first (when a screenshot is shared)

Look at the timeline and preview and report only what is actually visible. If a layer's purpose is unclear (for example a purple bar labelled "8K"), say what you think it is and hedge ("em đoán là...").

Checklist, in this order:
1. Caption and title style: all-caps bold condensed fonts with a black stroke (Impact, Anton, Bebas-style) read as meme or vlog, not cinema. Replace them (Section 4).
2. Speed changes: Veo clips are 24 fps. Anything below 0.6x stutters. Tell the user to turn on Smooth slow-mo (optical flow) in the Speed panel, or better, keep 0.6x or faster and fill the gap with another of the 4 generated takes.
3. Global sharpen, "8K", HDR or enhance effects across the whole film: reduce to 20-30% or remove. Sharpening exposes AI artifacts (fingers, hair edges) and destroys film grain.
4. A single adjustment layer over acts with opposite moods: split the grade by scene group (Section 2).
5. Flashy transitions (zoom, spin, glitch, shake): replace with cuts and dissolves (Section 3).
6. Text covering faces, the hook frame or the climax: move or remove it.
7. Project frame rate other than 24 fps: set it to 24.

---

## 2. Color grade - two layers

### Layer 1: FILM BASE (one adjustment layer over the whole film)

Values use CapCut's -50 to +50 slider scale; if the user's version shows -100 to +100, tell them to double the numbers. They are starting points to tune by eye.

| Setting | Value | Why |
|---|---|---|
| Contrast | -6 | soft film response |
| Highlight | -12 | snow, windows and skies do not clip |
| Shadow | +6 | detail in dark rooms |
| Blacks | +5 | gentle matte, nostalgic |
| Saturation | -6 | tames the over-vivid AI look |
| Fade | 8 | light film veil |
| Grain | 10 | film texture, hides small AI artifacts |
| Vignette | 12 | pulls the eye to the center |
| Sharpen | 0 | never sharpen AI footage globally |

### Layer 2: GROUP GRADE (on the clips themselves)

Map every lighting phrase of the film's COLOR AND LIGHT SCRIPT to one grade family below, then list the scene numbers of each family from the timeline. In CapCut, grade one clip, then Copy attributes and Paste attributes (Ctrl+Alt+V) to the other clips of the same family, because one family is usually spread across non-adjacent scenes.

| Family | Use for | Temp | Tint | Sat | Extra |
|---|---|---|---|---|---|
| NIGHT-COLD | lonely nights, pre-dawn, cold interiors | -12 | +2 | -10 | Brightness -3, Vignette +8; HSL Orange sat +5 so practical warm light (lamp, candle, window) stays alive; HSL Blue lum -8 |
| DAY-COLD | winter or overcast day, grey dawn | -6 | 0 | -12 | Highlight -8; HSL: keep the hue of every COLOR LOCK garment unchanged |
| MEMORY | flashbacks, childhood, Galilee memories | +14 | +4 | -4 | Fade +12, Highlight +8; Glow or Bloom effect 15-20% |
| DARK-DRAMA | crucifixion darkness, storms, crisis | -4 | 0 | -18 | Contrast +6, Shadow -6, Vignette +12; HSL Red sat -10 so nothing reads as gore |
| WARM-NIGHT | lamplight grace, prayer at night | +8 | 0 | -3 | Shadow +4; HSL Orange sat +8, lum +5 |
| GOLDEN | sunrise, worship, restoration, finale | +10 | +3 | +4 | Brightness +4, Shadow +5; HSL Yellow sat +5 |

Rules:
- The grade must travel the same way as the story: cold and desaturated at the wound, warm and full at the restoration. Never put GOLDEN on a scene before the turn the story has earned.
- Skin first: HSL Orange hue 0, saturation never above +5 overall. Wrong skin is the first thing viewers notice.
- Protect the COLOR LOCK garments: check that every HEX-locked costume still reads as its named color after grading (for example a lavender cardigan must not turn grey or pink).
- If the user's CapCut has Color match, match each family to its best-looking "hero" clip first, then fine-tune by hand.

---

## 3. Transitions and effects

Use:
- Hard cuts as the default.
- Dissolve or Mix (0.5-1 s) only at the match cuts and time jumps already listed in the film's edit notes.
- Into and out of flashbacks: a dissolve with a light blur (about 0.3 s), or one very thin light-leak transition.
- Slow push on static shots: keyframe Scale 100% -> 104% over 8 s, so still frames breathe.
- One light leak or lens flare (Screen blend, 30-40% opacity) on the money-line beat of the climax only, timed to the exact word. Once per film.
- Optional letterbox 2.2:1 to 2.35:1 for the whole film; check the close-ups so foreheads and eyes are not cut.

Avoid: zoom, spin, glitch and shake transitions; global HDR or "8K" filters; divine light rays on many scenes; snow, dust or particle overlays across the whole film; heavy vignettes; speed ramps on emotional beats.

---

## 4. Typography

### Fonts (Google Fonts, free under the SIL Open Font License)

If CapCut does not list a font, the user downloads it from Google Fonts and imports it in CapCut desktop.

| Film world | Title and Scripture | Small caps, lyrics |
|---|---|---|
| Modern America (default) | Cormorant Garamond | Montserrat (Light or Medium) |
| Biblical world | Cinzel for the title, Cormorant Garamond for verses | Lato |
| Timeless or symbolic | Cormorant Garamond or Playfair Display | Montserrat |

Never: Impact, Anton or Bebas-style condensed caps with a stroke; blackletter "Bible" fonts; Papyrus; hard-to-read script fonts for anything longer than one word.

### Colors

| Role | Color |
|---|---|
| Main text | warm ivory #F5EFE6 (never pure white) |
| Accent (references, thin rules) | antique gold #C9A45C |
| Shadow | black 35-40%, blur 15-20, distance 0; no stroke, ever |

### Opening title

- Placement: the first establishing or dark-sky shot after the hook (usually Scene 2, 0:08-0:16). Never on the hook frame, never on the climax, never over eyes.
- Layout, centered or in the upper third over empty sky:

```
        A STORY OF FAITH REMEMBERED        <- Montserrat Light, ~24 pt, tracking +300, ivory at 75%
        ───────────                        <- 1 px rule, #C9A45C
           [Song Title]                    <- Cormorant Garamond SemiBold, ~96 pt at 1080p, tracking +40, ivory
```

- The small top line is a 3-5 word tagline written from the film's own story (examples: A STORY OF FAITH REMEMBERED, A FATHER WHO NEVER STOPPED WAITING).
- Animation: Fade in plus Blur in (1.2 s); slow scale 100% -> 103% while holding; Fade out (1 s); the small line enters 0.4 s after the title. Visible for about 6 seconds.

### Lyric captions

- Recommended: no full lyrics. Keep only 3-4 key lines (the turning line, the bridge line, the money line placed one scene after the climax, not on it).
- If the user wants full lyrics: Montserrat Medium 40-44 pt, sentence case, ivory, soft shadow, lower third with an 8% safe margin, one line at a time, 0.2 s fades, no karaoke word highlight.

### Scripture overlays and end cards

- Verse text: Cormorant Garamond Italic, ~44 pt, ivory.
- Reference: Montserrat 20 pt, all caps, tracking +200, antique gold, written as BOOK C:V · KJV (for example LAMENTATIONS 3:22-23 · KJV).
- At most 2-3 verses in the whole film: usually one at a dawn or turning scene and one or two on the end cards. More turns the film into a sermon.
- Never on the climax scenes. Let the image speak.
- End card sequence on black, about 4 s each with slow fades: (1) the primary verse, (2) a one-line dedication written from the story (for example "For every caregiver who prays in the dark."), (3) optional short blessing verse.

---

## 5. Choosing Scripture for the ending

1. Pick the one verse that mirrors the film's emotional key, the same truth the climax shows (a mother forgets, God does not; a father runs; she turned and saw Him).
2. Quote KJV (public domain in the US) or WEB character for character, keeping "LORD" in capitals where the KJV has it. Never paraphrase inside quotation marks. A shortened quote starts or ends with "..." at the cut.
3. Cite only verses you are certain of. If unsure, use one from the bank below or name the theme instead.
4. Offer the user 1 primary verse with a short form, plus 4-8 alternatives grouped by what they emphasize, each with a Vietnamese meaning and a suggested scene position.

### Verified KJV bank (copy exactly)

Deuteronomy 33:27, Hebrews 13:5 and Psalm 30:5 are partial verses cut at a natural break; on screen, mark the cut with "..." where the verse continues or begins earlier.

| Theme | Reference | KJV text |
|---|---|---|
| God never forgets | Isaiah 49:15 | Can a woman forget her sucking child, that she should not have compassion on the son of her womb? yea, they may forget, yet will I not forget thee. |
| Hands | Isaiah 49:16 | Behold, I have graven thee upon the palms of my hands; thy walls are continually before me. |
| Carried in old age | Isaiah 46:4 | And even to your old age I am he; and even to hoar hairs will I carry you: I have made, and I will bear; even I will carry, and will deliver you. |
| Everlasting arms | Deuteronomy 33:27 | The eternal God is thy refuge, and underneath are the everlasting arms: |
| When strength fails | Psalm 73:26 | My flesh and my heart faileth: but God is the strength of my heart, and my portion for ever. |
| Old age | Psalm 71:9 | Cast me not off in the time of old age; forsake me not when my strength faileth. |
| Never forsaken | Hebrews 13:5 | I will never leave thee, nor forsake thee. |
| Morning mercies | Lamentations 3:22-23 | It is of the LORD's mercies that we are not consumed, because his compassions fail not. They are new every morning: great is thy faithfulness. |
| Joy after the night | Psalm 30:5 | weeping may endure for a night, but joy cometh in the morning. |
| Broken heart | Psalm 34:18 | The LORD is nigh unto them that are of a broken heart; and saveth such as be of a contrite spirit. |
| Weary | Matthew 11:28 | Come unto me, all ye that labour and are heavy laden, and I will give you rest. |
| Carrying each other | Galatians 6:2 | Bear ye one another's burdens, and so fulfil the law of Christ. |
| Generational faith | 2 Timothy 1:5 | When I call to remembrance the unfeigned faith that is in thee, which dwelt first in thy grandmother Lois, and thy mother Eunice; and I am persuaded that in thee also. |
| Honoring a mother | Proverbs 31:28 | Her children arise up, and call her blessed; her husband also, and he praiseth her. |
| Homecoming | Luke 15:20 | And he arose, and came to his father. But when he was yet a great way off, his father saw him, and had compassion, and ran, and fell on his neck, and kissed him. |
| Resurrection | Matthew 28:6 | He is not here: for he is risen, as he said. Come, see the place where the Lord lay. |
| Recognition | John 20:16 | Jesus saith unto her, Mary. She turned herself, and saith unto him, Rabboni; which is to say, Master. |
| Witness | John 20:18 | Mary Magdalene came and told the disciples that she had seen the LORD, and that he had spoken these things unto her. |
| Valley | Psalm 23:4 | Yea, though I walk through the valley of the shadow of death, I will fear no evil: for thou art with me; thy rod and thy staff they comfort me. |
| No more tears | Revelation 21:4 | And God shall wipe away all tears from their eyes; and there shall be no more death, neither sorrow, nor crying, neither shall there be any more pain: for the former things are passed away. |
| Peace | John 14:27 | Peace I leave with you, my peace I give unto you: not as the world giveth, give I unto you. Let not your heart be troubled, neither let it be afraid. |

---

## 6. Audio

- Keep Veo's ambient sound (clock, wind, crickets, birds) under the song at about -28 dB in the quiet sections (intro, bridge, outro); mute it in the big choruses and the climax.
- Normalize the master to about -14 LUFS for YouTube (CapCut: Normalize loudness).
- Music fade-in 0.5 s at the start; the ending fade-out lands with the picture fading to black.

## 7. Export

- Frame rate 24 fps, matching Veo. 30 or 60 fps adds judder.
- 1080p, or 4K if the footage was upscaled; bitrate Higher; H.264 or HEVC.

## 8. Thumbnail and YouTube title

- Thumbnail: a frame from the climax or the "screenshot frame" named in the edit notes, graded a touch warmer than the film, with at most 6 words in the title font. Write the words from the film's twist (example: "She forgot my name. Not His.").
- YouTube title pattern: [Song Title] — [one-line story hook] (Music Video). Use "Official" only if the user owns the song rights.

---

## 9. Output format (Vietnamese)

Send the post-production pack in this order, short and concrete:
1. Nhận xét timeline (only if a screenshot was shared): the problems found, most important first, each with the exact fix.
2. Bảng màu: the FILM BASE table, then the group table with this film's scene numbers per family.
3. Hiệu ứng và chuyển cảnh: the film's actual match cuts and the single climax effect, with scene numbers.
4. Chữ: fonts, colors, the opening title block written out with this film's title and tagline, lyric advice, Scripture overlay style.
5. Câu Kinh Thánh cho phần kết: the primary verse (full and short form) and the alternatives table, plus the end card sequence written out.
6. Âm thanh, xuất file, thumbnail và tiêu đề YouTube.

Offer once to save the pack as an .md file next to the production file. The whole production file is already saved automatically with the last scene batch (see SKILL.md, Full production file); if it is missing or the user asks again, write one .md containing: settings, song analysis, the chosen concept, all locks, the full timeline, cast, reference prompts, anchors and descriptors, the negative-lock table, every scene prompt in order, edit notes, overlays, Shorts cut and production summary, then verify that every scene's locks and anchors are verbatim before sending it.

---

## 10. Worked example - "Jesus, I Need You" / "The Prayer She Still Remembers"

Light script to family mapping used for that film (42 scenes):

| Family | Light codes | Scenes |
|---|---|---|
| NIGHT-COLD | L1 winter night | 1-5, 7-9, 15, 26 |
| DAY-COLD | L2 winter morning | 6, 12-14, 16-18, 29 |
| MEMORY | L3 summer memory, L4 bedside memory | 10, 11, 23, 28, 39 |
| WARM-NIGHT | L5 grace night, L9 spring night | 20-22, 24, 25, 27, 40, 41 |
| GOLDEN | L6 Sunday, L7 golden hour, L8 sunrise | 19, 30-38, 42 |

- Opening title on Scene 2 (the dark farmhouse in the snow), tagline A STORY OF FAITH REMEMBERED.
- Climax flare on Scene 35 at the word "thunder"; no text on Scenes 34-35.
- Primary end verse: Isaiah 49:15, short form "...yea, they may forget, yet will I not forget thee."; dedication "For every caregiver who prays in the dark."; optional Hebrews 13:5.
- Thumbnail: Scene 35 frame with "She forgot my name. Not His."
