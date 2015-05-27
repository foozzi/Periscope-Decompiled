.class Lo/aki;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bIn:Landroid/graphics/Bitmap;

.field final synthetic bIo:Lo/akh$if;


# direct methods
.method constructor <init>(Lo/akh$if;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/aki;->bIo:Lo/akh$if;

    iput-object p2, p0, Lo/aki;->bIn:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget-object v0, p0, Lo/aki;->bIo:Lo/akh$if;

    invoke-static {v0}, Lo/akh$if;->ˊ(Lo/akh$if;)Lo/akh$ˊ;

    move-result-object v0

    iget-object v1, p0, Lo/aki;->bIn:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lo/akh$ˊ;->ˑ(Landroid/graphics/Bitmap;)V

    .line 62
    return-void
.end method
