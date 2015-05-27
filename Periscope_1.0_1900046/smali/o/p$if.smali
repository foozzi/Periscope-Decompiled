.class abstract Lo/p$if;
.super Lo/az$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/az$if<Lcom/google/android/gms/common/api/Status;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/ᒴ;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/az$if;-><init>(Lo/ᒴ;)V

    return-void
.end method


# virtual methods
.method public synthetic ˊ(Lcom/google/android/gms/common/api/Status;)Lo/ᒹ;
    .locals 1

    invoke-virtual {p0, p1}, Lo/p$if;->ˏ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
