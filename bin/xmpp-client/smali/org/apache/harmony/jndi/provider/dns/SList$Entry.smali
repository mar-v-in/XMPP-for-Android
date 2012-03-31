.class Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
.super Ljava/lang/Object;
.source "SList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/dns/SList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field private responseTime:I

.field private serverNum:I

.field private zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "zoneName"
    .parameter "serverNum"
    .parameter "respTime"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->zoneName:Ljava/lang/String;

    .line 56
    iput p2, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->serverNum:I

    .line 57
    iput p3, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->responseTime:I

    .line 58
    return-void
.end method


# virtual methods
.method public getResponseTime()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->responseTime:I

    return v0
.end method

.method public getServerNum()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->serverNum:I

    return v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->zoneName:Ljava/lang/String;

    return-object v0
.end method

.method public setResponseTime(I)V
    .locals 0
    .parameter "responseTime"

    .prologue
    .line 86
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->responseTime:I

    .line 87
    return-void
.end method

.method public setServerNum(I)V
    .locals 0
    .parameter "serverNum"

    .prologue
    .line 94
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->serverNum:I

    .line 95
    return-void
.end method

.method public setZoneName(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneName"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->zoneName:Ljava/lang/String;

    .line 103
    return-void
.end method
