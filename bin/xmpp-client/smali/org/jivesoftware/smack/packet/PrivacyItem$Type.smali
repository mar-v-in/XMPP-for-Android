.class public final enum Lorg/jivesoftware/smack/packet/PrivacyItem$Type;
.super Ljava/lang/Enum;
.source "PrivacyItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/PrivacyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/PrivacyItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

.field public static final enum group:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

.field public static final enum jid:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

.field public static final enum subscription:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    const-string v1, "group"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;-><init>(Ljava/lang/String;I)V

    .line 169
    sput-object v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->group:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    .line 170
    new-instance v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    const-string v1, "jid"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;-><init>(Ljava/lang/String;I)V

    .line 174
    sput-object v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->jid:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    .line 175
    new-instance v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    const-string v1, "subscription"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;-><init>(Ljava/lang/String;I)V

    .line 179
    sput-object v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->subscription:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    sget-object v1, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->group:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->jid:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->subscription:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PrivacyItem$Type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/PrivacyItem$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
