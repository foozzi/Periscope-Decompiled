.class public Lo/acn;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private final bxS:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    iput p1, p0, Lo/acn;->bxS:I

    .line 15
    return-void
.end method


# virtual methods
.method public wP()Z
    .locals 1

    .line 22
    iget v0, p0, Lo/acn;->bxS:I

    invoke-static {v0}, Lo/ძ;->ذ(I)Z

    move-result v0

    return v0
.end method

.method public ˋ(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1

    .line 27
    iget v0, p0, Lo/acn;->bxS:I

    invoke-static {v0, p1, p2}, Lo/ძ;->ˊ(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
