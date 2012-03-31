.class public Lorg/jivesoftware/smack/filter/AndFilter;
.super Ljava/lang/Object;
.source "AndFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/filter/PacketFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:Ljava/util/List;

    .line 47
    return-void
.end method

.method public varargs constructor <init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 4
    .parameter "filters"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:Ljava/util/List;

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 65
    return-void

    .line 59
    :cond_1
    aget-object v0, p1, v1

    .line 60
    .local v0, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    if-nez v0, :cond_2

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter "packet"

    .prologue
    .line 69
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 70
    .local v0, filter:Lorg/jivesoftware/smack/filter/PacketFilter;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/AndFilter;->filters:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
