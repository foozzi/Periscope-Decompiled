.class Lo/ᖾ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;

.field final synthetic Dl:Lcom/google/android/gms/common/internal/zzaa;


# direct methods
.method constructor <init>(Lo/ᖨ;Lcom/google/android/gms/common/internal/zzaa;)V
    .locals 0

    iput-object p1, p0, Lo/ᖾ;->Dk:Lo/ᖨ;

    iput-object p2, p0, Lo/ᖾ;->Dl:Lcom/google/android/gms/common/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ᖾ;->Dk:Lo/ᖨ;

    iget-object v1, p0, Lo/ᖾ;->Dl:Lcom/google/android/gms/common/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzaa;->ᒴ()Lo/בֿ;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ᖨ;->ˊ(Lo/ᖨ;Lo/בֿ;)Lo/בֿ;

    iget-object v0, p0, Lo/ᖾ;->Dk:Lo/ᖨ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ᖨ;->ˋ(Lo/ᖨ;Z)Z

    iget-object v0, p0, Lo/ᖾ;->Dk:Lo/ᖨ;

    iget-object v1, p0, Lo/ᖾ;->Dl:Lcom/google/android/gms/common/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzaa;->ᒸ()Z

    move-result v1

    invoke-static {v0, v1}, Lo/ᖨ;->ˎ(Lo/ᖨ;Z)Z

    iget-object v0, p0, Lo/ᖾ;->Dk:Lo/ᖨ;

    iget-object v1, p0, Lo/ᖾ;->Dl:Lcom/google/android/gms/common/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzaa;->ᒹ()Z

    move-result v1

    invoke-static {v0, v1}, Lo/ᖨ;->ˏ(Lo/ᖨ;Z)Z

    iget-object v0, p0, Lo/ᖾ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˌ(Lo/ᖨ;)V

    return-void
.end method
