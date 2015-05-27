.class final Lo/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒰ$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14b0$\u02cb<Lo/x;Lo/\u14b0$if$\u02ca;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒰ$if$ˊ;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/x;
    .locals 8

    new-instance v0, Lo/x;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "locationServices"

    invoke-virtual {p3}, Lo/ぃ;->ᖪ()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lo/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Ljava/lang/Object;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/ᒰ$ˊ;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    check-cast v4, Lo/ᒰ$if$ˊ;

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/ba;->ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒰ$if$ˊ;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/x;

    move-result-object v0

    return-object v0
.end method
