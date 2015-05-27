.class public abstract Lo/ﻏ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﻏ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final Fi:Ljava/lang/Object;

.field private static Fj:Lo/ﻏ$if;

.field private static Fk:I


# instance fields
.field protected final Fl:Ljava/lang/String;

.field protected final Fm:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private Fn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ﻏ;->Fi:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lo/ﻏ;->Fj:Lo/ﻏ$if;

    const/4 v0, 0x0

    sput v0, Lo/ﻏ;->Fk:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﻏ;->Fn:Ljava/lang/Object;

    iput-object p1, p0, Lo/ﻏ;->Fl:Ljava/lang/String;

    iput-object p2, p0, Lo/ﻏ;->Fm:Ljava/lang/Object;

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lo/ﻏ;->Fj:Lo/ﻏ$if;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ˊ(Ljava/lang/String;Ljava/lang/Integer;)Lo/ﻏ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/Integer;)Lo/\ufecf<Ljava/lang/Integer;>;"
        }
    .end annotation

    new-instance v0, Lo/ｋ;

    invoke-direct {v0, p0, p1}, Lo/ｋ;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static ˊ(Ljava/lang/String;Ljava/lang/Long;)Lo/ﻏ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/Long;)Lo/\ufecf<Ljava/lang/Long;>;"
        }
    .end annotation

    new-instance v0, Lo/ﻛ;

    invoke-direct {v0, p0, p1}, Lo/ﻛ;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static ˏ(Ljava/lang/String;Z)Lo/ﻏ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Z)Lo/\ufecf<Ljava/lang/Boolean;>;"
        }
    .end annotation

    new-instance v0, Lo/ﻐ;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/ﻐ;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static ͺ(Ljava/lang/String;Ljava/lang/String;)Lo/ﻏ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;)Lo/\ufecf<Ljava/lang/String;>;"
        }
    .end annotation

    new-instance v0, Lo/ﾇ;

    invoke-direct {v0, p0, p1}, Lo/ﾇ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ッ()I
    .locals 1

    sget v0, Lo/ﻏ;->Fk:I

    return v0
.end method

.method static synthetic ヾ()Lo/ﻏ$if;
    .locals 1

    sget-object v0, Lo/ﻏ;->Fj:Lo/ﻏ$if;

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/ﻏ;->Fn:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﻏ;->Fn:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/ﻏ;->Fl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/ﻏ;->ᔇ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract ᔇ(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)TT;"
        }
    .end annotation
.end method
