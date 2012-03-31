.class public Lorg/jivesoftware/smack/filter/NotFilter;
.super Ljava/lang/Object;
.source "NotFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private final filter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/filter/NotFilter;->filter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 46
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 1
    .parameter "packet"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/NotFilter;->filter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
