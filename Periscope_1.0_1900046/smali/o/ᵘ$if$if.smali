.class Lo/ᵘ$if$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵘ$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field Į:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field į:Lo/ᵘ;

.field final synthetic ŕ:Lo/ᵘ$if;


# direct methods
.method private constructor <init>(Lo/ᵘ$if;Lo/ᵘ;Landroid/view/View;)V
    .locals 1

    .line 296
    iput-object p1, p0, Lo/ᵘ$if$if;->ŕ:Lo/ᵘ$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ᵘ$if$if;->Į:Ljava/lang/ref/WeakReference;

    .line 298
    iput-object p2, p0, Lo/ᵘ$if$if;->į:Lo/ᵘ;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lo/ᵘ$if;Lo/ᵘ;Landroid/view/View;Lo/ᵘ$1;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1, p2, p3}, Lo/ᵘ$if$if;-><init>(Lo/ᵘ$if;Lo/ᵘ;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 303
    iget-object v0, p0, Lo/ᵘ$if$if;->Į:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 304
    if-eqz v2, :cond_0

    .line 305
    iget-object v0, p0, Lo/ᵘ$if$if;->ŕ:Lo/ᵘ$if;

    iget-object v1, p0, Lo/ᵘ$if$if;->į:Lo/ᵘ;

    invoke-static {v0, v1, v2}, Lo/ᵘ$if;->ˊ(Lo/ᵘ$if;Lo/ᵘ;Landroid/view/View;)V

    .line 307
    :cond_0
    return-void
.end method
