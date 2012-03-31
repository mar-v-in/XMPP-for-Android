.class public Lorg/jivesoftware/smackx/packet/JingleError;
.super Ljava/lang/Object;
.source "JingleError.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleError$Provider;
    }
.end annotation


# static fields
.field public static final MALFORMED_STANZA:Lorg/jivesoftware/smackx/packet/JingleError;

.field public static NAMESPACE:Ljava/lang/String;

.field public static final NEGOTIATION_ERROR:Lorg/jivesoftware/smackx/packet/JingleError;

.field public static final NO_COMMON_PAYLOAD:Lorg/jivesoftware/smackx/packet/JingleError;

.field public static final OUT_OF_ORDER:Lorg/jivesoftware/smackx/packet/JingleError;

.field public static final UNKNOWN_SESSION:Lorg/jivesoftware/smackx/packet/JingleError;

.field public static final UNSUPPORTED_CONTENT:Lorg/jivesoftware/smackx/packet/JingleError;

.field public static final UNSUPPORTED_TRANSPORTS:Lorg/jivesoftware/smackx/packet/JingleError;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "urn:xmpp:tmp:jingle:errors"

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->NAMESPACE:Ljava/lang/String;

    .line 66
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleError;

    .line 67
    const-string v1, "out-of-order"

    .line 66
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->OUT_OF_ORDER:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleError;

    .line 70
    const-string v1, "unknown-session"

    .line 69
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->UNKNOWN_SESSION:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 72
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleError;

    .line 73
    const-string v1, "unsupported-content"

    .line 72
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->UNSUPPORTED_CONTENT:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 77
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleError;

    .line 78
    const-string v1, "unsupported-transports"

    .line 77
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->UNSUPPORTED_TRANSPORTS:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 80
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleError;

    .line 81
    const-string v1, "unsupported-codecs"

    .line 80
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->NO_COMMON_PAYLOAD:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 83
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleError;

    .line 84
    const-string v1, "negotiation-error"

    .line 83
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->NEGOTIATION_ERROR:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 86
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleError;

    .line 87
    const-string v1, "malformed-stanza"

    .line 86
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->MALFORMED_STANZA:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleError;->message:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/JingleError;
    .locals 1
    .parameter "value"

    .prologue
    .line 93
    if-eqz p0, :cond_6

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 95
    const-string v0, "out-of-order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->OUT_OF_ORDER:Lorg/jivesoftware/smackx/packet/JingleError;

    .line 112
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string v0, "unknown-session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->UNKNOWN_SESSION:Lorg/jivesoftware/smackx/packet/JingleError;

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "unsupported-content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->UNSUPPORTED_CONTENT:Lorg/jivesoftware/smackx/packet/JingleError;

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "unsupported-transports"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->UNSUPPORTED_TRANSPORTS:Lorg/jivesoftware/smackx/packet/JingleError;

    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "unsupported-codecs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->NO_COMMON_PAYLOAD:Lorg/jivesoftware/smackx/packet/JingleError;

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "negotiation-error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->NEGOTIATION_ERROR:Lorg/jivesoftware/smackx/packet/JingleError;

    goto :goto_0

    .line 107
    :cond_5
    const-string v0, "malformed-stanza"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->MALFORMED_STANZA:Lorg/jivesoftware/smackx/packet/JingleError;

    goto :goto_0

    .line 112
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleError;->NAMESPACE:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleError;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "<error type=\"cancel\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    sget-object v2, Lorg/jivesoftware/smackx/packet/JingleError;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "</error>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
