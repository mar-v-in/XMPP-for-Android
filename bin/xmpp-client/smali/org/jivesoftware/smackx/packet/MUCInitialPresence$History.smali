.class public Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;
.super Ljava/lang/Object;
.source "MUCInitialPresence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MUCInitialPresence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "History"
.end annotation


# instance fields
.field private maxChars:I

.field private maxStanzas:I

.field private seconds:I

.field private since:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxChars:I

    .line 55
    iput v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxStanzas:I

    .line 56
    iput v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->seconds:I

    .line 52
    return-void
.end method


# virtual methods
.method public getMaxChars()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxChars:I

    return v0
.end method

.method public getMaxStanzas()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxStanzas:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->seconds:I

    return v0
.end method

.method public getSince()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->since:Ljava/util/Date;

    return-object v0
.end method

.method public setMaxChars(I)V
    .locals 0
    .parameter "maxChars"

    .prologue
    .line 108
    iput p1, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxChars:I

    .line 109
    return-void
.end method

.method public setMaxStanzas(I)V
    .locals 0
    .parameter "maxStanzas"

    .prologue
    .line 118
    iput p1, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxStanzas:I

    .line 119
    return-void
.end method

.method public setSeconds(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 131
    iput p1, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->seconds:I

    .line 132
    return-void
.end method

.method public setSince(Ljava/util/Date;)V
    .locals 0
    .parameter "since"

    .prologue
    .line 144
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->since:Ljava/util/Date;

    .line 145
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<history"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxChars()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 151
    const-string v2, " maxchars=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxChars()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxStanzas()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 154
    const-string v2, " maxstanzas=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxStanzas()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSeconds()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 158
    const-string v2, " seconds=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSince()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 161
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 162
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 161
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, utcFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 164
    const-string v2, " since=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSince()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .end local v1           #utcFormat:Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v2, "/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
