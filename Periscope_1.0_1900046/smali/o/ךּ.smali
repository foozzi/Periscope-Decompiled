.class final enum Lo/ךּ;
.super Lo/ΐ$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ΐ$ˋ;-><init>(Ljava/lang/String;ILo/ΐ$1;)V

    return-void
.end method


# virtual methods
.method protected ˊ(Ljava/lang/Throwable;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lo/ΐ$ˋ;->ˊ(Ljava/lang/Throwable;)V

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
