.class public Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OccupantsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;,
        Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "occupants-info"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jivesoftware.com/protocol/workgroup"

.field private static final UTC_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final occupants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final roomID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 122
    const-string v1, "yyyyMMdd\'T\'HH:mm:ss"

    .line 121
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    .line 125
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "roomID"

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 142
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->roomID:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->occupants:Ljava/util/Set;

    .line 144
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->occupants:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "occupants-info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " xmlns=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    const-string v3, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "\" roomID=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->roomID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->occupants:Ljava/util/Set;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->occupants:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "occupants-info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 153
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;

    .line 154
    .local v1, occupant:Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;
    const-string v4, "<occupant>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v4, "<jid>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->getJID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v4, "</jid>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v4, "<name>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v4, "</name>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v4, "<joined>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    sget-object v4, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->getJoined()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v4, "</joined>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v4, "</occupant>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    .end local v1           #occupant:Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getOccupants()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->occupants:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOccupantsCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->occupants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->roomID:Ljava/lang/String;

    return-object v0
.end method
