.class public Lo/ﯩ$ʽ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﯩ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02bd"
.end annotation


# instance fields
.field private final ʔ:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lo/ﯩ$ʽ;->ʔ:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method static synthetic ˊ(Lo/ﯩ$ʽ;)Ljava/lang/Object;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/ﯩ$ʽ;->ʔ:Ljava/lang/Object;

    return-object v0
.end method

.method public static ˋ(IIIIZZ)Lo/ﯩ$ʽ;
    .locals 8

    .line 124
    new-instance v0, Lo/ﯩ$ʽ;

    invoke-static {}, Lo/ﯩ;->ˣ()Lo/ﯩ$ˎ;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lo/ﯩ$ˎ;->ˊ(IIIIZZ)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ﯩ$ʽ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
