.class public Lo/ԁ$ˊ;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ԁ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ca"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 48
    const-string v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lo/ԁ$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lo/ԁ$ˊ;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
