.class public Lorg/jivesoftware/smackx/packet/DelayInformation;
.super Ljava/lang/Object;
.source "DelayInformation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# static fields
.field public static final XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;


# instance fields
.field private from:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private final stamp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 54
    const-string v1, "yyyyMMdd\'T\'HH:mm:ss"

    .line 53
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    .line 56
    sget-object v0, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .parameter "stamp"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->stamp:Ljava/util/Date;

    .line 72
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "x"

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "jabber:x:delay"

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->stamp:Ljava/util/Date;

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 126
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->from:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 138
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->reason:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, " stamp=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    sget-object v2, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    monitor-enter v2

    .line 148
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->stamp:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->from:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->from:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->reason:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->reason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 156
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DelayInformation;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
