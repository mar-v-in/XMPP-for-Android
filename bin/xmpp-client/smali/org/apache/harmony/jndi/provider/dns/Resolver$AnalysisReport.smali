.class Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;
.super Ljava/lang/Object;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/dns/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnalysisReport"
.end annotation


# instance fields
.field aliasInfoWasReceived:Z

.field completeAnswerWasReceived:Z

.field delegationArrived:Z

.field delegationZones:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field extraRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation
.end field

.field messageWasTruncated:Z

.field nameError:Z

.field newName:Ljava/lang/String;

.field records:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->completeAnswerWasReceived:Z

    .line 81
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->nameError:Z

    .line 83
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationArrived:Z

    .line 85
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->aliasInfoWasReceived:Z

    .line 87
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->messageWasTruncated:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->newName:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    .line 99
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationZones:Ljava/util/Vector;

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    .line 101
    return-void
.end method
