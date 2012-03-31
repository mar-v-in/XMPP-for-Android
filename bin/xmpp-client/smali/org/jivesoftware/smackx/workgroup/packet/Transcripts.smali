.class public Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Transcripts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$AgentDetail;,
        Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;
    }
.end annotation


# static fields
.field private static final UTC_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final summaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 194
    const-string v1, "yyyyMMdd\'T\'HH:mm:ss"

    .line 193
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    .line 196
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "userID"

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 210
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->userID:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->summaries:Ljava/util/List;

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "userID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, summaries:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 226
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->userID:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->summaries:Ljava/util/List;

    .line 228
    return-void
.end method

.method static synthetic access$0()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<transcripts xmlns=\"http://jivesoftware.com/protocol/workgroup\" userID=\""

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->userID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->summaries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    const-string v2, "</transcripts>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 238
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;

    .line 239
    .local v1, transcriptSummary:Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/Transcripts$TranscriptSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->summaries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;->userID:Ljava/lang/String;

    return-object v0
.end method
