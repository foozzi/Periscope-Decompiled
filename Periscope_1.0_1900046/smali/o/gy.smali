.class Lo/gy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ho;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/ho<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic KJ:Ljava/lang/reflect/Type;

.field final synthetic KK:Lo/gt;

.field final synthetic KN:Lo/fs;


# direct methods
.method constructor <init>(Lo/gt;Lo/fs;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lo/gy;->KK:Lo/gt;

    iput-object p2, p0, Lo/gy;->KN:Lo/fs;

    iput-object p3, p0, Lo/gy;->KJ:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/gy;->KN:Lo/fs;

    iget-object v1, p0, Lo/gy;->KJ:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lo/fs;->ˊ(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
