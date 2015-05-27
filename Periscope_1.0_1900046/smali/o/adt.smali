.class Lo/adt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byW:Landroid/view/ViewTreeObserver;

.field final synthetic byX:Lo/ads;


# direct methods
.method constructor <init>(Lo/ads;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/adt;->byX:Lo/ads;

    iput-object p2, p0, Lo/adt;->byW:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lo/adt;->byX:Lo/ads;

    invoke-static {v0}, Lo/ads;->ˋ(Lo/ads;)Lo/adw;

    move-result-object v0

    iget-object v1, p0, Lo/adt;->byX:Lo/ads;

    invoke-static {v1}, Lo/ads;->ˊ(Lo/ads;)Lo/alf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/adw;->ˤ(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lo/adt;->byW:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
