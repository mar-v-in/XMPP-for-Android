.class public Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
.super Ljava/lang/Object;
.source "QuestionRecord.java"


# instance fields
.field private qClass:I

.field private qName:Ljava/lang/String;

.field private qType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "qName"
    .parameter "qType"
    .parameter "qClass"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qName:Ljava/lang/String;

    .line 94
    iput p2, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    .line 95
    iput p3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    .line 96
    return-void
.end method

.method public static parseRecord([BILorg/apache/harmony/jndi/provider/dns/QuestionRecord;)I
    .locals 4
    .parameter "mesBytes"
    .parameter "startIdx"
    .parameter "resultQR"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 50
    move v0, p1

    .line 51
    .local v0, idx:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v1, nameSB:Ljava/lang/StringBuffer;
    if-nez p2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "jndi.33"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    invoke-static {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    move-result v0

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->setQName(Ljava/lang/String;)V

    .line 61
    invoke-static {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->setQType(I)V

    .line 62
    add-int/lit8 v0, v0, 0x2

    .line 64
    invoke-static {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->setQClass(I)V

    .line 65
    add-int/lit8 v0, v0, 0x2

    .line 66
    return v0
.end method


# virtual methods
.method public getQClass()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    return v0
.end method

.method public getQName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qName:Ljava/lang/String;

    return-object v0
.end method

.method public getQType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    return v0
.end method

.method public setQClass(I)V
    .locals 0
    .parameter "class1"

    .prologue
    .line 126
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    .line 127
    return-void
.end method

.method public setQName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 134
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setQType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 142
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v2, sb:Ljava/lang/StringBuilder;
    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    if-lez v3, :cond_0

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    if-ge v3, v5, :cond_0

    .line 151
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    iget v4, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    aget-object v1, v3, v4

    .line 155
    .local v1, qTypeStr:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    if-lez v3, :cond_1

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    if-ge v3, v5, :cond_1

    .line 156
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    iget v4, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    aget-object v0, v3, v4

    .line 160
    .local v0, qClassStr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 153
    .end local v0           #qClassStr:Ljava/lang/String;
    .end local v1           #qTypeStr:Ljava/lang/String;
    :cond_0
    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #qTypeStr:Ljava/lang/String;
    goto :goto_0

    .line 158
    :cond_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #qClassStr:Ljava/lang/String;
    goto :goto_1
.end method

.method public writeBytes([BI)I
    .locals 3
    .parameter "buffer"
    .parameter "startIdx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 179
    move v0, p2

    .line 182
    .local v0, idx:I
    if-nez p1, :cond_0

    .line 184
    new-instance v1, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v2, "jndi.32"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    if-gez p2, :cond_2

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 190
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qName:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeName(Ljava/lang/String;[BI)I

    move-result v0

    .line 192
    iget v1, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qType:I

    invoke-static {v1, p1, v0}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v0

    .line 194
    iget v1, p0, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->qClass:I

    invoke-static {v1, p1, v0}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v0

    .line 195
    return v0
.end method
