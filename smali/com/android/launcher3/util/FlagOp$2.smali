.class Lcom/android/launcher3/util/FlagOp$2;
.super Lcom/android/launcher3/util/FlagOp;
.source "SourceFile"


# instance fields
.field final synthetic val$flag:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/android/launcher3/util/FlagOp$2;->val$flag:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/FlagOp;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 1

    .line 17
    iget v0, p0, Lcom/android/launcher3/util/FlagOp$2;->val$flag:I

    or-int/2addr p1, v0

    return p1
.end method
