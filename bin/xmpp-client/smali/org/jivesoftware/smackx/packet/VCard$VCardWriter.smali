.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;
.super Ljava/lang/Object;
.source "VCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/VCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardWriter"
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/jivesoftware/smackx/packet/VCard;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter "sb"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    .line 104
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->buildActualContent()V

    return-void
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Lorg/jivesoftware/smackx/packet/VCard;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    return-object v0
.end method

.method private appendAddress(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, addr:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    const-string v0, "ADR"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 123
    :cond_0
    return-void
.end method

.method private appendEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "email"
    .parameter "type"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v0, "EMAIL"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 137
    :cond_0
    return-void
.end method

.method private appendEmptyTag(Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method

.method private appendGenericFields()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$0(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$1(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    return-void

    .line 146
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendN()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "N"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 167
    return-void
.end method

.method private appendOrganization()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$5(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "ORG"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 181
    :cond_0
    return-void
.end method

.method private appendPhones(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, phones:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    return-void

    .line 186
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    const-string v2, "TEL"

    const/4 v3, 0x1

    new-instance v4, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;

    invoke-direct {v4, p0, v0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/util/Map$Entry;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v4}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "tagText"

    .prologue
    .line 205
    if-nez p2, :cond_0

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;

    invoke-direct {v0, p0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;)V

    .line 214
    .local v0, contentBuilder:Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 3
    .parameter "tag"
    .parameter "attr"
    .parameter "attrValue"
    .parameter "hasContent"
    .parameter "builder"

    .prologue
    const/16 v2, 0x27

    .line 219
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    if-eqz p4, :cond_1

    .line 226
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {p5}, Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;->addTagContent()V

    .line 228
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 6
    .parameter "tag"
    .parameter "hasContent"
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 202
    return-void
.end method

.method private buildActualContent()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$8(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendN()V

    .line 239
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendOrganization()V

    .line 240
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendGenericFields()V

    .line 242
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$9(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$10(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$11(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$12(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$13(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$14(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .prologue
    .line 253
    const-string v1, "vCard"

    const-string v2, "xmlns"

    const-string v3, "vcard-temp"

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasContent()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$15(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v4

    .line 254
    new-instance v5, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    move-object v0, p0

    .line 253
    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 260
    return-void
.end method
