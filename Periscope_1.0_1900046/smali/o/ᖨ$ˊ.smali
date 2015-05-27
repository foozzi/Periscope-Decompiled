.class Lo/ᖨ$ˊ;
.super Lo/ﺕ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᖨ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private Dp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Lo/\u15a8;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/ᖨ;)V
    .locals 1

    invoke-direct {p0}, Lo/ﺕ$if;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ᖨ$ˊ;->Dp:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public ˋ(Lcom/google/android/gms/common/internal/zzaa;)V
    .locals 2

    iget-object v0, p0, Lo/ᖨ$ˊ;->Dp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᖨ;

    move-object v1, v0

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lo/ᖨ;->ˊ(Lo/ᖨ;Lcom/google/android/gms/common/internal/zzaa;)V

    :cond_0
    return-void
.end method
