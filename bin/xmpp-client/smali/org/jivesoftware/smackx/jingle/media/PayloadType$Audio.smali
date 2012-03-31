.class public Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
.super Lorg/jivesoftware/smackx/jingle/media/PayloadType;
.source "PayloadType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/media/PayloadType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation


# instance fields
.field private clockRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "rate"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;)V

    .line 69
    iput p3, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "channels"
    .parameter "rate"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;I)V

    .line 86
    iput p4, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;)V
    .locals 1
    .parameter "pt"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 108
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->getClockRate()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 1
    .parameter "pt"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 125
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 127
    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 128
    .local v0, other:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->getClockRate()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->getClockRate()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 129
    goto :goto_0
.end method

.method public getClockRate()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 150
    const/16 v0, 0x1f

    .line 151
    .local v0, PRIME:I
    invoke-super {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->hashCode()I

    move-result v1

    .line 152
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->getClockRate()I

    move-result v3

    add-int v1, v2, v3

    .line 153
    return v1
.end method

.method public setClockRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 163
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->clockRate:I

    .line 164
    return-void
.end method
