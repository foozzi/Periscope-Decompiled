.class Lo/akh$if;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final bIk:Landroid/graphics/Bitmap;

.field private final bIl:I

.field private final bIm:Lo/akh$ˊ;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;ILo/akh$ˊ;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput-object p1, p0, Lo/akh$if;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lo/akh$if;->bIk:Landroid/graphics/Bitmap;

    .line 50
    iput p3, p0, Lo/akh$if;->bIl:I

    .line 51
    iput-object p4, p0, Lo/akh$if;->bIm:Lo/akh$ˊ;

    .line 52
    return-void
.end method

.method static synthetic ˊ(Lo/akh$if;)Lo/akh$ˊ;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/akh$if;->bIm:Lo/akh$ˊ;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 56
    iget-object v0, p0, Lo/akh$if;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/akh$if;->bIk:Landroid/graphics/Bitmap;

    iget v2, p0, Lo/akh$if;->bIl:I

    invoke-static {v0, v1, v2}, Lo/akh;->ˊ(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lo/akh$if;->bIm:Lo/akh$ˊ;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lo/aki;

    invoke-direct {v1, p0, v3}, Lo/aki;-><init>(Lo/akh$if;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_0
    return-void
.end method
