.class Lo/ᖪ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᖨ$ˏ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;


# direct methods
.method constructor <init>(Lo/ᖨ;)V
    .locals 0

    iput-object p1, p0, Lo/ᖪ;->Dk:Lo/ᖨ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Lo/ᖨ$ᐝ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u15a8$\u141d<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/ᖪ;->Dk:Lo/ᖨ;

    iget-object v0, v0, Lo/ᖨ;->Df:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
