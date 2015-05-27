.class Lo/ᖨ$if;
.super Lo/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᖨ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
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

    invoke-direct {p0}, Lo/ak;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ᖨ$if;->Dp:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public ˊ(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/zzut;)V
    .locals 2

    iget-object v0, p0, Lo/ᖨ$if;->Dp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᖨ;

    move-object v1, v0

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lo/ᖨ;->ˎ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method
