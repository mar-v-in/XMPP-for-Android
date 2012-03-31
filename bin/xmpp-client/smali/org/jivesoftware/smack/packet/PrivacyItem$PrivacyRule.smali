.class public Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;
.super Ljava/lang/Object;
.source "PrivacyItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/PrivacyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyRule"
.end annotation


# static fields
.field public static final SUBSCRIPTION_BOTH:Ljava/lang/String; = "both"

.field public static final SUBSCRIPTION_FROM:Ljava/lang/String; = "from"

.field public static final SUBSCRIPTION_NONE:Ljava/lang/String; = "none"

.field public static final SUBSCRIPTION_TO:Ljava/lang/String; = "to"


# instance fields
.field private type:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;
    .locals 2
    .parameter "value"

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;-><init>()V

    .line 59
    .local v0, rule:Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->setType(Lorg/jivesoftware/smack/packet/PrivacyItem$Type;)V

    goto :goto_0
.end method

.method private setSuscriptionValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 111
    const-string v1, "both"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v0, "both"

    .line 124
    .local v0, setValue:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->value:Ljava/lang/String;

    .line 125
    return-void

    .line 113
    .end local v0           #setValue:Ljava/lang/String;
    :cond_0
    const-string v1, "to"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string v0, "to"

    .restart local v0       #setValue:Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0           #setValue:Ljava/lang/String;
    :cond_1
    const-string v1, "from"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const-string v0, "from"

    .restart local v0       #setValue:Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v0           #setValue:Ljava/lang/String;
    :cond_2
    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const-string v0, "none"

    .restart local v0       #setValue:Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0           #setValue:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #setValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private setType(Lorg/jivesoftware/smack/packet/PrivacyItem$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 136
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->type:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    .line 137
    return-void
.end method


# virtual methods
.method public getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->type:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isSuscription()Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/PrivacyItem$Type;->subscription:Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->isSuscription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->setSuscriptionValue(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->value:Ljava/lang/String;

    goto :goto_0
.end method
