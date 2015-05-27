.class final Lo/ﺘ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ӱ:Ljava/lang/reflect/Field;

.field final synthetic ԏ:Landroid/widget/PopupWindow;

.field final synthetic Դ:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/ﺘ;->ӱ:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lo/ﺘ;->ԏ:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lo/ﺘ;->Դ:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/ﺘ;->ӱ:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lo/ﺘ;->ԏ:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    .line 105
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/ﺘ;->Դ:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 113
    :goto_0
    return-void
.end method
