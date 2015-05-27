.class public Lo/ﯩ$ʼ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﯩ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02bc"
.end annotation


# instance fields
.field final ʔ:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lo/ﯩ$ʼ;->ʔ:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static ˋ(IIZI)Lo/ﯩ$ʼ;
    .locals 2

    .line 92
    new-instance v0, Lo/ﯩ$ʼ;

    invoke-static {}, Lo/ﯩ;->ˣ()Lo/ﯩ$ˎ;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lo/ﯩ$ˎ;->ˊ(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ﯩ$ʼ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
