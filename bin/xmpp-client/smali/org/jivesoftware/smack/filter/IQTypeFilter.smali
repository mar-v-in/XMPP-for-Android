.class public Lorg/jivesoftware/smack/filter/IQTypeFilter;
.super Ljava/lang/Object;
.source "IQTypeFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private final type:Lorg/jivesoftware/smack/packet/IQ$Type;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smack/filter/IQTypeFilter;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 38
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 2
    .parameter "packet"

    .prologue
    .line 49
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .end local p1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQTypeFilter;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
