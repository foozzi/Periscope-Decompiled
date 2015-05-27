.class Lo/amv$if;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/amv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final bNy:Landroid/widget/PopupWindow;

.field private final bNz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/widget/TextView;)V
    .locals 1

    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    iput-object p1, p0, Lo/amv$if;->bNy:Landroid/widget/PopupWindow;

    .line 90
    iput-object p2, p0, Lo/amv$if;->bNz:Landroid/widget/TextView;

    .line 91
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 96
    :sswitch_0
    iget-object v0, p0, Lo/amv$if;->bNy:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/amv$if;->bNz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lo/amv$if;->bNy:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 100
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
