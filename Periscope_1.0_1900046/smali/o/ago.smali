.class public Lo/ago;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/akh$ˊ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 1482
    iput-object p1, p0, Lo/ago;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˑ(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1485
    iget-object v0, p0, Lo/ago;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﾞ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lo/ago;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﾞ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1487
    iget-object v0, p0, Lo/ago;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﾞ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1488
    return-void
.end method
