.class Lo/ῑ$ˊ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ$ˊ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic B:Lo/ῑ$ˊ;


# direct methods
.method private constructor <init>(Lo/ῑ$ˊ;)V
    .locals 0

    .line 1476
    iput-object p1, p0, Lo/ῑ$ˊ$if;->B:Lo/ῑ$ˊ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ῑ$ˊ;Lo/‿;)V
    .locals 0

    .line 1476
    invoke-direct {p0, p1}, Lo/ῑ$ˊ$if;-><init>(Lo/ῑ$ˊ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1479
    iget-object v0, p0, Lo/ῑ$ˊ$if;->B:Lo/ῑ$ˊ;

    invoke-static {v0}, Lo/ῑ$ˊ;->ˊ(Lo/ῑ$ˊ;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1480
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1481
    return-void
.end method
