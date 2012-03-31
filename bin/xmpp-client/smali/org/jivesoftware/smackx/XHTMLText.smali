.class public Lorg/jivesoftware/smackx/XHTMLText;
.super Ljava/lang/Object;
.source "XHTMLText.java"


# instance fields
.field private final text:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "style"
    .parameter "lang"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/XHTMLText;->appendOpenBodyTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private appendOpenBodyTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "style"
    .parameter "lang"

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<body"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 278
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    if-eqz p2, :cond_1

    .line 283
    const-string v1, " xml:lang=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    return-void
.end method

.method private closeBodyTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    const-string v0, "</body>"

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2
    .parameter "textToAppend"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method

.method public appendBrTag()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "<br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method

.method public appendCloseAnchorTag()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    return-void
.end method

.method public appendCloseBlockQuoteTag()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</blockquote>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    return-void
.end method

.method public appendCloseCodeTag()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</code>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    return-void
.end method

.method public appendCloseEmTag()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</em>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method public appendCloseHeaderTag(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 104
    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</h"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendCloseInlinedQuoteTag()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</q>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    return-void
.end method

.method public appendCloseOrderedListTag()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</ol>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    return-void
.end method

.method public appendCloseParagraphTag()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    return-void
.end method

.method public appendCloseSpanTag()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    return-void
.end method

.method public appendCloseStrongTag()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    return-void
.end method

.method public appendCloseUnorderedListTag()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "</ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    return-void
.end method

.method public appendImageTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "align"
    .parameter "alt"
    .parameter "height"
    .parameter "src"
    .parameter "width"

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<img"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 181
    const-string v1, " align=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    if-eqz p2, :cond_1

    .line 186
    const-string v1, " alt=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    if-eqz p3, :cond_2

    .line 191
    const-string v1, " height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    if-eqz p4, :cond_3

    .line 196
    const-string v1, " src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_3
    if-eqz p5, :cond_4

    .line 201
    const-string v1, " width=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_4
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    return-void
.end method

.method public appendLineItemTag(Ljava/lang/String;)V
    .locals 3
    .parameter "style"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<li"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 218
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    return-void
.end method

.method public appendOpenAnchorTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "href"
    .parameter "style"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 237
    const-string v1, " href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    if-eqz p2, :cond_1

    .line 242
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    return-void
.end method

.method public appendOpenBlockQuoteTag(Ljava/lang/String;)V
    .locals 3
    .parameter "style"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<blockquote"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 259
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    return-void
.end method

.method public appendOpenCiteTag()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "<cite>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    return-void
.end method

.method public appendOpenCodeTag()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "<code>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    return-void
.end method

.method public appendOpenEmTag()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "<em>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    return-void
.end method

.method public appendOpenHeaderTag(ILjava/lang/String;)V
    .locals 3
    .parameter "level"
    .parameter "style"

    .prologue
    .line 326
    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<h"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    if-eqz p2, :cond_2

    .line 332
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_2
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendOpenInlinedQuoteTag(Ljava/lang/String;)V
    .locals 3
    .parameter "style"

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<q"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 349
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    return-void
.end method

.method public appendOpenOrderedListTag(Ljava/lang/String;)V
    .locals 3
    .parameter "style"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<ol"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 368
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    return-void
.end method

.method public appendOpenParagraphTag(Ljava/lang/String;)V
    .locals 3
    .parameter "style"

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<p"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 387
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    return-void
.end method

.method public appendOpenSpanTag(Ljava/lang/String;)V
    .locals 3
    .parameter "style"

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<span"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 404
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    return-void
.end method

.method public appendOpenStrongTag()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    const-string v1, "<strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    return-void
.end method

.method public appendOpenUnorderedListTag(Ljava/lang/String;)V
    .locals 3
    .parameter "style"

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<ul"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 431
    const-string v1, " style=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v1, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lorg/jivesoftware/smackx/XHTMLText;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/jivesoftware/smackx/XHTMLText;->closeBodyTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
