.class public Lorg/jivesoftware/smack/filter/OrFilter;
.super Ljava/lang/Object;
.source "OrFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .parameter "filter1"
    .parameter "filter2"

    .prologue
    const/4 v0, 0x2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    .line 65
    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 68
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 2
    .parameter "packet"

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    if-lt v0, v1, :cond_0

    .line 77
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x1

    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    iget v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 93
    iget-object v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 94
    .local v1, newFilters:[Lorg/jivesoftware/smack/filter/PacketFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 97
    iput-object v1, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 100
    .end local v0           #i:I
    .end local v1           #newFilters:[Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    iget v3, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    aput-object p1, v2, v3

    .line 101
    iget v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    .line 102
    return-void

    .line 95
    .restart local v0       #i:I
    .restart local v1       #newFilters:[Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
