.class public final Lo/ᕻ$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᕻ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᕻ$ˊ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;T:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ey:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<TA;TT;>;"
        }
    .end annotation
.end field

.field private final ez:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TT;>;"
        }
    .end annotation
.end field

.field final synthetic fa:Lo/ᕻ;


# direct methods
.method constructor <init>(Lo/ᕻ;Lo/ɽ;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u027d<TA;TT;>;Ljava/lang/Class<TT;>;)V"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lo/ᕻ$ˊ;->fa:Lo/ᕻ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lo/ᕻ$ˊ;->ey:Lo/ɽ;

    .line 715
    iput-object p3, p0, Lo/ᕻ$ˊ;->ez:Ljava/lang/Class;

    .line 716
    return-void
.end method

.method static synthetic ˊ(Lo/ᕻ$ˊ;)Lo/ɽ;
    .locals 1

    .line 709
    iget-object v0, p0, Lo/ᕻ$ˊ;->ey:Lo/ɽ;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ᕻ$ˊ;)Ljava/lang/Class;
    .locals 1

    .line 709
    iget-object v0, p0, Lo/ᕻ$ˊ;->ez:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public ˡ(Ljava/lang/Object;)Lo/ᕻ$ˊ$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Lo/\u157b$\u02ca<TA;TT;>.if;"
        }
    .end annotation

    .line 735
    new-instance v0, Lo/ᕻ$ˊ$if;

    invoke-direct {v0, p0, p1}, Lo/ᕻ$ˊ$if;-><init>(Lo/ᕻ$ˊ;Ljava/lang/Object;)V

    return-object v0
.end method
