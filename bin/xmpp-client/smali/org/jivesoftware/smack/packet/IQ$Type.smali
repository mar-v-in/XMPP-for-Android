.class public Lorg/jivesoftware/smack/packet/IQ$Type;
.super Ljava/lang/Object;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

.field public static final GET:Lorg/jivesoftware/smack/packet/IQ$Type;

.field public static final RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

.field public static final SET:Lorg/jivesoftware/smack/packet/IQ$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/jivesoftware/smack/packet/IQ$Type;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 59
    new-instance v0, Lorg/jivesoftware/smack/packet/IQ$Type;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 60
    new-instance v0, Lorg/jivesoftware/smack/packet/IQ$Type;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 61
    new-instance v0, Lorg/jivesoftware/smack/packet/IQ$Type;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/IQ$Type;->value:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ$Type;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 77
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto :goto_0

    .line 81
    :cond_3
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto :goto_0

    .line 83
    :cond_4
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/IQ$Type;->value:Ljava/lang/String;

    return-object v0
.end method
