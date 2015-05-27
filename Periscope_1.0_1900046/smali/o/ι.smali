.class public Lo/ι;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ι$ˋ;,
        Lo/ι$ˊ;,
        Lo/ι$if;
    }
.end annotation


# instance fields
.field private final ł:Lo/ι$if;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ι;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 502
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 516
    new-instance v0, Lo/ι$ˋ;

    invoke-direct {v0, p1, p2, p3}, Lo/ι$ˋ;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/ι;->ł:Lo/ι$if;

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Lo/ι$ˊ;

    invoke-direct {v0, p1, p2, p3}, Lo/ι$ˊ;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/ι;->ł:Lo/ι$if;

    .line 520
    :goto_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 538
    iget-object v0, p0, Lo/ι;->ł:Lo/ι$if;

    invoke-interface {v0, p1}, Lo/ι$if;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lo/ι;->ł:Lo/ι$if;

    invoke-interface {v0, p1}, Lo/ι$if;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 563
    return-void
.end method
